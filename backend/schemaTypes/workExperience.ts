import { defineType } from 'sanity'

export const workExperience = defineType({
  name: 'workExperience',
  title: 'WorkExperience',
  type: 'document',
  fields: [
            {
                name: 'name',
               title:'name',
               type:'string'
            },
            {
                name:'company',
                title:'Company',
                type:'string'
            },
            {
                name:'desc',
                title:'Desc',
                type:'string'
            }
  ],
})